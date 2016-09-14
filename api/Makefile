SHELL=/bin/bash
.SUFFIXES: .java .m
.PHONY: translate_dependencies

BUILD_DIR = build
SRC_DIR = src
LIBS_DIR = libs
APP_DIR = $(SRC_DIR)/main/java
TEST_DIR = $(SRC_DIR)/test/java

# Change to where distribution was unzipped.
J2OBJC_PATH = $(J2OBJC_HOME)
J2OBJC = $(J2OBJC_PATH)/j2objc
J2OBJCC = $(J2OBJC_PATH)/j2objcc

APP_JAVA_SRCS = $(shell find $(APP_DIR) -type f -name '*.java')
APP_OBJECTS = $(patsubst $(APP_DIR)/%.java, $(BUILD_DIR)/%.o, $(APP_JAVA_SRCS))
APP_OBJC_SRCS = $(patsubst %.o,%.m,$(APP_OBJECTS))
APP_STATIC_LIB = $(BUILD_DIR)/libs/totspCore.a


DEP_LOCAL_LIBS_ROOT=./libs/local_src
DEP_LOCAL_LIBS = $(shell find $(DEP_LOCAL_LIBS_ROOT) -name *-sources)
DEP_LOCAL_LIBS_CLASSPATH = $(shell find $(DEP_LOCAL_LIBS_ROOT) -name *-sources | paste -s -d":" -)
DEP_LOCAL_LIBS_RAW = $(shell find ./libs/raw_src_jars -name *-sources.jar)
DEP_LOCAL_LIBS_RAW_CLASSPATH = $(shell find ./libs/raw_src_jars -name *-sources.jar | paste -s -d":" -)
TRANSLATED_LIBS_ROOT=$(BUILD_DIR)/libs/translated/
TRANSLATED_LIB_OBJECTS = $(patsubst $(APP_DIR)/%.java, $(BUILD_DIR)/%.o, $(APP_JAVA_SRCS))
TRANSLATED_LIB_SRCS = $(patsubst %.o,%.m,$(APP_OBJECTS))

DEP_JRE_EMUL=$(J2OBJC_PATH)/lib/jre_emul-src.jar
DEP_GUAVA=$(J2OBJC_PATH)/lib/guava-19.0.jar
DEP_JSR=$(J2OBJC_PATH)/lib/jsr305-3.0.0.jar
DEP_JAVAX=$(J2OBJC_PATH)/lib/javax.inject-1.jar
DEP_ANNOTATIONS=$(J2OBJC_PATH)/lib/j2objc_annotations.jar
DEP_J2OBJC_DIST_LIBS_CLASSPATH=$(DEP_JRE_EMUL):$(DEP_GUAVA):$(DEP_JSR):$(DEP_JAVAX):$(DEP_ANNOTATIONS)

# If `make debug_trace=1`
# $(debug_enter)
debug_enter = $(if $(debug_trace),\
 $(warning Entering $0($(echo-args))))

# $(debug_leave)
debug_leave = $(if $(debug_trace),$(warning Leaving $0))

# $(call assert,condition,message)
define assert
 $(if $1,,$(error Assertion failed: $2))
endef

# $(call assert_file_exists,wildcard_pattern)
define assert_file_exists
 $(call assert,$(wildcard $1),$1 does not exist)
endef

# $(call assert_not_null,somevar)
define assert_not_null
 $(call assert,$($1),The variable "$1" is null)
endef

define prepare_dependency
  $(debug_enter)
	$(call assert_file_exists,$1)
	# Unzip $1
  $(eval lib_dir_src=$(DEP_LOCAL_LIBS_ROOT)/$(basename $(notdir $1)))
	# to $(lib_dir_src)
  $(shell mkdir -p $(lib_dir_src))
  $(shell unzip -uo $1 -d $(lib_dir_src))
	# Find all Java Files...
  $(eval lib_srcs=$(shell find $(lib_dir_src) -type f -name '*.java'))
  $(eval translated_dir=$(TRANSLATED_LIBS_ROOT)/$(basename $(notdir $1)))
  $(call assert_not_null,lib_srcs)
  $(info $(DEP_LOCAL_LIBS_CLASSPATH):$(DEP_J2OBJC_DIST_LIBS_CLASSPATH):.)
	# Translate Dependency to ObjC...
	TRANSLATE:=$(shell $(J2OBJC) -Werror --quiet -use-arc --swift-friendly --nullability --doc-comments -d $(translated_dir) \
    -sourcepath $(DEP_LOCAL_LIBS_CLASSPATH):$(DEP_J2OBJC_DIST_LIBS_CLASSPATH) \
    -classpath $(DEP_LOCAL_LIBS_CLASSPATH):$(DEP_J2OBJC_DIST_LIBS_CLASSPATH):. $(lib_srcs) && echo "Success" || rm -r $(translated_dir))
	# Exit: $(TRANSLATE)
	$(eval translated_object_files=$(patsubst $(lib_dir_src)/%.java, $(translated_dir)/%.o, $(lib_srcs)))
	$(eval translated_source_files=$(patsubst %.o,%.m, $(translated_object_files)))
$(translated_object_files): $(translated_source_files)
  $(info $@)
  $(info $?)
	$(J2OBJCC) -ObjC -I$(BUILD_DIR) -c -ljre_emul -lguava -ljavax_inject -ljsr305 -o $@
  $(debug_leave)
endef

default: translate_dependencies
	@:

translate: $(APP_JAVA_SRCS)
	# Translating Java to Objective C, with local dependency translation...
	$(J2OBJC) -Werror -use-arc --swift-friendly --nullability --doc-comments --build-closure -d $(BUILD_DIR) \
	-sourcepath $(APP_DIR):$(DEP_LOCAL_LIBS_CLASSPATH) -classpath $(DEP_LOCAL_LIBS_CLASSPATH):$(DEP_J2OBJC_DIST_LIBS_CLASSPATH):. \
	$(APP_JAVA_SRCS)
	#$(J2OBJCC) -c `find . -name *.m`

translate_dependencies: $(DEP_LOCAL_LIBS_RAW)
    $(info $(DEP_LOCAL_LIBS_RAW))
    $(foreach lib_jar,$(DEP_LOCAL_LIBS_RAW),$(info $(lib_jar)))
    $(foreach lib_jar,$(DEP_LOCAL_LIBS_RAW),$(eval$(call prepare_dependency,$(lib_jar))))

clean:
	@rm -rf $(BUILD_DIR)

vanilla_compile:
	# Validating vanilla JVM compile...
	javac -implicit:none -d $(BUILD_DIR) \
	-Xprefer:newer \
	- sourcepath $(APP_DIR):$(DEP_LOCAL_LIBS_CLASSPATH)
	-classpath $(DEP_LOCAL_LIBS_CLASSPATH):$(DEP_J2OBJC_DIST_LIBS_CLASSPATH):. \
	$(APP_JAVA_SRCS)

compile_objects:
	@echo "Compiling Object Files..."
	$(BUILD_DIR)/%.m: $(BUILD_DIR)/%.o
		$(J2OBJCC) -ObjC -I$(BUILD_DIR) -ljre_emul -lguava -ljavax_inject -ljsr305 -o $@

package:
	@libtool -o $(APP_STATIC_LIB) $(APP_OBJECTS) $(APP_STATIC_LIB)

$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

#$(TRANSLATED_LIBS_ROOT):
#	@mkdir -p $(TRANSLATED_LIBS_ROOT)

$(TRANSLATED_LIBS_ROOT)/*/%.a: $(DEP_LOCAL_LIBS_ROOT)/*/%.o
	@echo "Creating Static"

$(TRANSLATED_LIBS_ROOT)/%.o: $(DEP_LOCAL_LIBS_ROOT)/%.m
	@echo "Creating Source"

#$(TRANSLATED_LIBS_ROOT)/%: $(DEP_LOCAL_LIBS_ROOT)/%
#    @echo "Translating Libs"
#    $(info $(DEP_LOCAL_LIBS_RAW))
#	$(info $@)
#	$(info $?)
#	$(info $<)

#$(TRANSLATED_LIBS_ROOT)/%.a: $(DEP_LOCAL_LIBS_ROOT)/%
#    @echo "Creating Static"

#$(BUILD_DIR)/%.m $(BUILD_DIR)/%.h: $(SOURCE_DIR)/%.java
#	$(J2OBJC) -sourcepath $(SOURCE_DIR) -d $(BUILD_DIR) $?
#
#$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.m
#	$(J2OBJCC) -I$(BUILD_DIR) -c $? -o $@
#
#$(BUILD_DIR):
#	@mkdir $(BUILD_DIR)

//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: build/libs_raw/rxjava-1.1.6-sources/rx/internal/util/SynchronizedQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "rx/internal/util/SynchronizedQueue.h"

@interface RxInternalUtilSynchronizedQueue () {
 @public
  JavaUtilLinkedList *list_;
  jint size_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalUtilSynchronizedQueue, list_, JavaUtilLinkedList *)

@implementation RxInternalUtilSynchronizedQueue

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalUtilSynchronizedQueue_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)size {
  RxInternalUtilSynchronizedQueue_initWithInt_(self, size);
  return self;
}

- (jboolean)isEmpty {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) isEmpty];
  }
}

- (jboolean)containsWithId:(id)o {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) containsWithId:o];
  }
}

- (id<JavaUtilIterator>)iterator {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) iterator];
  }
}

- (jint)size {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) size];
  }
}

- (jboolean)addWithId:(id)e {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) addWithId:e];
  }
}

- (jboolean)removeWithId:(id)o {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) removeWithId:o];
  }
}

- (jboolean)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) containsAllWithJavaUtilCollection:c];
  }
}

- (jboolean)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) addAllWithJavaUtilCollection:c];
  }
}

- (jboolean)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) removeAllWithJavaUtilCollection:c];
  }
}

- (jboolean)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) retainAllWithJavaUtilCollection:c];
  }
}

- (void)clear {
  @synchronized(self) {
    [((JavaUtilLinkedList *) nil_chk(list_)) clear];
  }
}

- (NSString *)description {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) description];
  }
}

- (NSUInteger)hash {
  return ((jint) [((JavaUtilLinkedList *) nil_chk(list_)) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return true;
  if (obj == nil) return false;
  if ([self getClass] != (id) [obj getClass]) return false;
  RxInternalUtilSynchronizedQueue *other = (RxInternalUtilSynchronizedQueue *) cast_chk(obj, [RxInternalUtilSynchronizedQueue class]);
  if (list_ == nil) {
    if (other->list_ != nil) return false;
  }
  else if (![list_ isEqual:other->list_]) return false;
  return true;
}

- (id)peek {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) peek];
  }
}

- (id)element {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) element];
  }
}

- (id)poll {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) poll];
  }
}

- (id)remove {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) remove];
  }
}

- (jboolean)offerWithId:(id)e {
  @synchronized(self) {
    if (size_ > -1 && [((JavaUtilLinkedList *) nil_chk(list_)) size] + 1 > size_) {
      return false;
    }
    return [((JavaUtilLinkedList *) nil_chk(list_)) offerWithId:e];
  }
}

- (id)clone {
  @synchronized(self) {
    RxInternalUtilSynchronizedQueue *q = new_RxInternalUtilSynchronizedQueue_initWithInt_(size_);
    [q addAllWithJavaUtilCollection:list_];
    return q;
  }
}

- (IOSObjectArray *)toArray {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) toArray];
  }
}

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)a {
  @synchronized(self) {
    return [((JavaUtilLinkedList *) nil_chk(list_)) toArrayWithNSObjectArray:a];
  }
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { "initWithInt:", NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { "isEmpty", "Z", 0x21, -1, -1, -1, -1, -1, -1 },
    { "containsWithId:", "Z", 0x21, 1, 2, -1, -1, -1, -1 },
    { "iterator", "LJavaUtilIterator;", 0x21, -1, -1, -1, 3, -1, -1 },
    { "size", "I", 0x21, -1, -1, -1, -1, -1, -1 },
    { "addWithId:", "Z", 0x21, 4, 2, -1, 5, -1, -1 },
    { "removeWithId:", "Z", 0x21, 6, 2, -1, -1, -1, -1 },
    { "containsAllWithJavaUtilCollection:", "Z", 0x21, 7, 8, -1, 9, -1, -1 },
    { "addAllWithJavaUtilCollection:", "Z", 0x21, 10, 8, -1, 11, -1, -1 },
    { "removeAllWithJavaUtilCollection:", "Z", 0x21, 12, 8, -1, 9, -1, -1 },
    { "retainAllWithJavaUtilCollection:", "Z", 0x21, 13, 8, -1, 9, -1, -1 },
    { "clear", "V", 0x21, -1, -1, -1, -1, -1, -1 },
    { "description", "LNSString;", 0x21, 14, -1, -1, -1, -1, -1 },
    { "hash", "I", 0x1, 15, -1, -1, -1, -1, -1 },
    { "isEqual:", "Z", 0x1, 16, 2, -1, -1, -1, -1 },
    { "peek", "LNSObject;", 0x21, -1, -1, -1, 17, -1, -1 },
    { "element", "LNSObject;", 0x21, -1, -1, -1, 17, -1, -1 },
    { "poll", "LNSObject;", 0x21, -1, -1, -1, 17, -1, -1 },
    { "remove", "LNSObject;", 0x21, -1, -1, -1, 17, -1, -1 },
    { "offerWithId:", "Z", 0x21, 18, 2, -1, 5, -1, -1 },
    { "clone", "LNSObject;", 0x21, -1, -1, -1, -1, -1, -1 },
    { "toArray", "[LNSObject;", 0x21, -1, -1, -1, -1, -1, -1 },
    { "toArrayWithNSObjectArray:", "[LNSObject;", 0x21, 19, 20, -1, 21, -1, -1 },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "list_", "LJavaUtilLinkedList;", .constantValue.asLong = 0, 0x12, -1, -1, 22, -1 },
    { "size_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "contains", "LNSObject;", "()Ljava/util/Iterator<TT;>;", "add", "(TT;)Z", "remove", "containsAll", "LJavaUtilCollection;", "(Ljava/util/Collection<*>;)Z", "addAll", "(Ljava/util/Collection<+TT;>;)Z", "removeAll", "retainAll", "toString", "hashCode", "equals", "()TT;", "offer", "toArray", "[LNSObject;", "<R:Ljava/lang/Object;>([TR;)[TR;", "Ljava/util/LinkedList<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Queue<TT;>;" };
  static const J2ObjcClassInfo _RxInternalUtilSynchronizedQueue = { "SynchronizedQueue", "rx.internal.util", ptrTable, methods, fields, 7, 0x1, 24, 2, -1, -1, -1, 23, -1 };
  return &_RxInternalUtilSynchronizedQueue;
}

@end

void RxInternalUtilSynchronizedQueue_init(RxInternalUtilSynchronizedQueue *self) {
  NSObject_init(self);
  self->list_ = new_JavaUtilLinkedList_init();
  self->size_ = -1;
}

RxInternalUtilSynchronizedQueue *new_RxInternalUtilSynchronizedQueue_init() {
  J2OBJC_NEW_IMPL(RxInternalUtilSynchronizedQueue, init)
}

RxInternalUtilSynchronizedQueue *create_RxInternalUtilSynchronizedQueue_init() {
  J2OBJC_CREATE_IMPL(RxInternalUtilSynchronizedQueue, init)
}

void RxInternalUtilSynchronizedQueue_initWithInt_(RxInternalUtilSynchronizedQueue *self, jint size) {
  NSObject_init(self);
  self->list_ = new_JavaUtilLinkedList_init();
  self->size_ = size;
}

RxInternalUtilSynchronizedQueue *new_RxInternalUtilSynchronizedQueue_initWithInt_(jint size) {
  J2OBJC_NEW_IMPL(RxInternalUtilSynchronizedQueue, initWithInt_, size)
}

RxInternalUtilSynchronizedQueue *create_RxInternalUtilSynchronizedQueue_initWithInt_(jint size) {
  J2OBJC_CREATE_IMPL(RxInternalUtilSynchronizedQueue, initWithInt_, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilSynchronizedQueue)

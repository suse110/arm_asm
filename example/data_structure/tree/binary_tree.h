#ifndef __BINARY_TREE_H__
#define __BINARY_TREE_H__

typedef struct TreeNode *PtrToNode;
typedef struct PtrToNode Tree;
#define ElementType char

struct TreeNode {
    ElementType Element;
    Tree Left;
    Tree Right;
};

#endif // __BINARY_TREE_H__

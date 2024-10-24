#ifndef REDBLACK_H
#define REDBLACK_H

#include <arthur_core.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

typedef enum color { RED, BLACK } Color;

typedef struct node {
  int val;
  Color color;

  struct node *left;
  struct node *right;
  struct node *parent;
} Node;

Color get_opposite_color(Color color);
Node *recolor(Node *node);
Node *insert(Node *node, int val);
Node *find(int v, Node *node);

#endif

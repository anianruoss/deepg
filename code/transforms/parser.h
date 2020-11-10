#include "transforms/brightness_transform.h"
#include "transforms/composition.h"
#include "transforms/pixel_identity.h"
#include "transforms/pixel_transform.h"
#include "transforms/rotation.h"
#include "transforms/rotation_1d.h"
#include "transforms/rotation_2d.h"
#include "transforms/rotation_3d.h"
#include "transforms/scale.h"
#include "transforms/shear.h"
#include "transforms/transformation.h"
#include "transforms/translation.h"
#include "transforms/translation_1d.h"

SpatialTransformation3D *getSpatialTransformation3D(string &s);
SpatialTransformation *getSpatialTransformation(string &s);
PixelTransformation *getPixelTransformation(string &s);
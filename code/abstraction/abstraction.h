#include "domains/interval.h"
#include "domains/polyhedra.h"
#include "gurobi_c++.h"
#include "transforms/interpolation.h"
#include "transforms/pixel_transform.h"
#include "transforms/transformation.h"
#include "utils/utilities.h"

#pragma once

LipschitzFunction getLipschitzFunction(
    const Image &img, const Pixel<double> &pixel,
    const HyperBox &combinedDomain,
    const SpatialTransformation &spatialTransformation,
    const PixelTransformation &pixelTransformation,
    const InterpolationTransformation &interpolationTransformation, bool lower);

Image abstractWithSimpleBox(
    const HyperBox &combinedDomain, const Image &img,
    const SpatialTransformation &spatialTransformation,
    const PixelTransformation &pixelTransformation,
    const InterpolationTransformation &interpolationTransformation,
    int insideSplits);

vector<Polyhedra> abstractWithPolyhedra(
    const HyperBox &combinedDomain, const GRBEnv &env, int degree, double eps,
    const Image &img, const SpatialTransformation &spatialTransformation,
    const PixelTransformation &pixelTransformation,
    const InterpolationTransformation &interpolationTransformation,
    const Image &transformedImage, Statistics &counter);

vector<Polyhedra> abstractWithCustomDP(
    const HyperBox &combinedDomain, const Image &img,
    const SpatialTransformation &spatialTransformation,
    const InterpolationTransformation &interpolationTransformation,
    const Image &transformedImage);
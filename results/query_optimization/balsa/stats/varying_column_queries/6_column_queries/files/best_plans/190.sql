/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-08 23:08:03'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2718 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-28 15:26:45'::timestamp;


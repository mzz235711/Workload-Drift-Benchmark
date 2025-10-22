/*+ HashJoin(ph p c)
 NestLoop(p c)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=44 AND p.CommentCount=10 AND p.FavoriteCount<=6 AND ph.CreationDate>='2010-07-27 14:46:49'::timestamp AND ph.CreationDate<='2014-08-21 09:23:26'::timestamp;


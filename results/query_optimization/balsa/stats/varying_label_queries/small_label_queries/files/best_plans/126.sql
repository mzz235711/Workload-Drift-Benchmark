/*+ NestLoop(u p pl v)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(v)
 Leading((((u p) pl) v)) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, votes as v, users as u WHERE p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND pl.CreationDate>='2011-01-07 01:23:05'::timestamp AND p.PostTypeId=1 AND p.Score<=13 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CommentCount>=0 AND v.CreationDate<='2014-09-04 00:00:00'::timestamp AND u.UpVotes>=0;


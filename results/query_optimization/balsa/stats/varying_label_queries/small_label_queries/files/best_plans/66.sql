/*+ NestLoop(p u pl b c)
 NestLoop(p u pl b)
 HashJoin(p u pl)
 HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(pl)
 IndexScan(b)
 IndexScan(c)
 Leading(((((p u) pl) b) c)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND pl.CreationDate<='2014-08-21 11:23:36'::timestamp AND p.PostTypeId=1 AND p.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=1696 AND p.AnswerCount>=0 AND u.DownVotes<=57 AND b.Date>='2010-09-16 13:08:06'::timestamp AND b.Date<='2014-09-12 17:21:13'::timestamp;


/*+ NestLoop(c u p pl b)
 HashJoin(c u p pl)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(b)
 Leading((((c (u p)) pl) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND pl.CreationDate>='2011-03-18 11:36:48'::timestamp AND pl.CreationDate<='2014-07-09 11:46:57'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-09 08:38:53'::timestamp AND u.Views<=26 AND u.UpVotes>=0 AND b.Date>='2010-08-15 11:47:55'::timestamp;


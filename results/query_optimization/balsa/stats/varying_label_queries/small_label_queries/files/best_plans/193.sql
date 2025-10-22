/*+ NestLoop(p pl u c b)
 NestLoop(p pl u c)
 HashJoin(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(c)
 IndexScan(b)
 Leading(((((p pl) u) c) b)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-03 09:13:51'::timestamp AND p.ViewCount<=4545 AND p.AnswerCount=3 AND u.Reputation=1 AND u.Views>=0 AND u.Views<=1471 AND u.DownVotes>=0;


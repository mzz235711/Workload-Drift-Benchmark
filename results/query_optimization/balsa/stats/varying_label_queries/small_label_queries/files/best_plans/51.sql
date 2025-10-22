/*+ NestLoop(u p pl c)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading((((u p) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND c.CreationDate>='2010-08-02 06:09:19'::timestamp AND c.CreationDate<='2014-09-13 22:07:30'::timestamp AND p.Score>=0 AND p.Score<=22 AND p.AnswerCount<=10 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-12 13:45:01'::timestamp AND u.Reputation>=1 AND u.Reputation<=1230 AND u.Views>=0 AND u.DownVotes=0 AND u.UpVotes<=62 AND u.CreationDate>='2010-07-19 19:14:49'::timestamp AND u.CreationDate<='2014-09-02 09:13:25'::timestamp;


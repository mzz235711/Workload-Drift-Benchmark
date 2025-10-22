/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-29 00:21:10'::timestamp AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-07-18 18:15:49'::timestamp AND u.Views>=0 AND u.Views<=62 AND u.UpVotes<=5 AND u.CreationDate>='2010-12-02 12:42:58'::timestamp AND u.CreationDate<='2014-09-09 06:13:06'::timestamp;


/*+ MergeJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.AnswerCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate>='2010-08-05 02:57:24'::timestamp AND p.CreationDate<='2014-08-30 17:47:55'::timestamp AND u.Views<=13 AND u.DownVotes>=0 AND u.DownVotes<=34 AND u.UpVotes>=0 AND u.UpVotes<=204;


/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<7 AND p.CommentCount>12 AND p.CommentCount<23 AND u.DownVotes>301 AND u.DownVotes<595 AND v.CreationDate>'2011-04-17 15:25:49'::timestamp AND v.CreationDate<'2013-08-12 22:33:29'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-05-10 11:20:23'::timestamp AND b.Date<'2014-06-18 06:25:18'::timestamp;


/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<85 AND p.CommentCount>6 AND p.CommentCount<33 AND u.DownVotes>301 AND u.DownVotes<1178 AND v.CreationDate>'2009-12-13 19:01:05'::timestamp AND v.CreationDate<'2012-03-02 13:08:58'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-02-20 11:50:02'::timestamp AND b.Date<'2013-05-07 10:00:34'::timestamp;


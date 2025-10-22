/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>97 AND p.Score<175 AND p.CommentCount>3 AND p.CommentCount<41 AND u.DownVotes>40 AND u.DownVotes<1065 AND v.CreationDate>'2011-01-25 00:31:31'::timestamp AND v.CreationDate<'2013-09-22 00:21:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-06-07 03:09:24'::timestamp AND b.Date<'2013-10-30 05:47:41'::timestamp;


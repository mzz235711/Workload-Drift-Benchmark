/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>97 AND p.Score<136 AND p.CommentCount>9 AND p.CommentCount<31 AND u.DownVotes>4 AND u.DownVotes<700 AND v.CreationDate>'2013-04-13 16:53:41'::timestamp AND v.CreationDate<'2013-08-01 16:00:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-07-05 09:11:31'::timestamp AND b.Date<'2013-08-30 05:24:12'::timestamp;


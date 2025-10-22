/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<94 AND p.CommentCount>6 AND p.CommentCount<16 AND u.DownVotes>556 AND u.DownVotes<1023 AND v.CreationDate>'2011-11-06 12:52:41'::timestamp AND v.CreationDate<'2013-12-25 11:47:25'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2014-05-01 18:34:55'::timestamp AND b.Date<'2014-06-01 13:43:02'::timestamp;


/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<170 AND p.CommentCount>14 AND p.CommentCount<34 AND u.DownVotes>65 AND u.DownVotes<785 AND v.CreationDate>'2010-03-10 00:25:44'::timestamp AND v.CreationDate<'2012-08-30 14:55:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-12-17 06:28:32'::timestamp AND b.Date<'2012-03-27 15:07:20'::timestamp;


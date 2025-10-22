/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<94 AND p.CommentCount>4 AND p.CommentCount<34 AND u.DownVotes>65 AND u.DownVotes<1400 AND v.CreationDate>'2009-06-28 20:42:05'::timestamp AND v.CreationDate<'2012-12-06 10:44:13'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-06-13 08:19:54'::timestamp AND b.Date<'2011-10-05 09:19:32'::timestamp;


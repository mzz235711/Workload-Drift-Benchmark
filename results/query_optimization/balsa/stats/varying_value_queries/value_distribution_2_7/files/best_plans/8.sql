/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<145 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>488 AND u.DownVotes<1485 AND v.CreationDate>'2011-01-16 21:33:03'::timestamp AND v.CreationDate<'2011-08-29 20:30:27'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-04-24 08:31:25'::timestamp AND b.Date<'2012-03-10 04:04:22'::timestamp;


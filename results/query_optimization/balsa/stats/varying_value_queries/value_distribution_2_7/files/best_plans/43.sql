/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<16 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>180 AND u.DownVotes<1141 AND v.CreationDate>'2010-11-10 17:29:37'::timestamp AND v.CreationDate<'2012-05-04 16:35:35'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2011-03-29 07:03:56'::timestamp AND b.Date<'2012-09-01 08:15:02'::timestamp;


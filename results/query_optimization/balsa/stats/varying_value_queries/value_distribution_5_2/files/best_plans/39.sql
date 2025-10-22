/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<159 AND p.CommentCount>6 AND p.CommentCount<13 AND u.DownVotes>429 AND u.DownVotes<1082 AND v.CreationDate>'2009-09-21 09:01:30'::timestamp AND v.CreationDate<'2014-01-15 07:13:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-08-28 03:30:42'::timestamp AND b.Date<'2011-05-29 23:21:46'::timestamp;


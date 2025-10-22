/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<14 AND p.CommentCount>8 AND p.CommentCount<44 AND u.DownVotes>35 AND u.DownVotes<709 AND v.CreationDate>'2009-09-23 03:57:34'::timestamp AND v.CreationDate<'2010-08-27 01:00:10'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2013-10-18 12:48:29'::timestamp AND b.Date<'2014-08-29 14:39:07'::timestamp;


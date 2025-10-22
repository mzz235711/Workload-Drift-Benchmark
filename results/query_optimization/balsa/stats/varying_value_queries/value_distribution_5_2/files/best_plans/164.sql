/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<117 AND p.CommentCount>1 AND p.CommentCount<38 AND u.DownVotes>635 AND u.DownVotes<1457 AND v.CreationDate>'2009-03-31 12:55:19'::timestamp AND v.CreationDate<'2011-06-15 15:32:52'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2013-09-12 16:30:21'::timestamp AND b.Date<'2014-08-19 09:26:42'::timestamp;


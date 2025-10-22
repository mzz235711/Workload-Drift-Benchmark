/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<108 AND p.CommentCount>14 AND p.CommentCount<29 AND u.DownVotes>91 AND u.DownVotes<1509 AND v.CreationDate>'2011-09-11 12:06:12'::timestamp AND v.CreationDate<'2014-07-06 19:32:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-10-06 01:08:39'::timestamp AND b.Date<'2012-01-30 09:50:03'::timestamp;


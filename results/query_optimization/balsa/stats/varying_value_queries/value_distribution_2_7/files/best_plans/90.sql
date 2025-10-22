/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<190 AND p.CommentCount>16 AND p.CommentCount<43 AND u.DownVotes>43 AND u.DownVotes<1497 AND v.CreationDate>'2011-09-19 00:41:22'::timestamp AND v.CreationDate<'2014-08-10 06:04:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-29 07:44:20'::timestamp AND b.Date<'2014-05-29 07:37:06'::timestamp;


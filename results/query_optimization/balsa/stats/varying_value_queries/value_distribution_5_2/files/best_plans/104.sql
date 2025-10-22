/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<56 AND p.CommentCount>1 AND p.CommentCount<25 AND u.DownVotes>139 AND u.DownVotes<1901 AND v.CreationDate>'2011-08-30 15:17:04'::timestamp AND v.CreationDate<'2013-01-21 05:40:18'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2013-12-09 04:46:52'::timestamp AND b.Date<'2014-06-09 23:05:34'::timestamp;


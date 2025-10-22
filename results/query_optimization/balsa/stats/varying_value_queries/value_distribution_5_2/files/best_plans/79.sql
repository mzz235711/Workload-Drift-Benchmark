/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>81 AND p.Score<169 AND p.CommentCount>1 AND p.CommentCount<12 AND u.DownVotes>633 AND u.DownVotes<1736 AND v.CreationDate>'2011-08-24 11:16:26'::timestamp AND v.CreationDate<'2014-06-01 15:29:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-03-20 17:06:01'::timestamp AND b.Date<'2013-02-09 01:04:22'::timestamp;


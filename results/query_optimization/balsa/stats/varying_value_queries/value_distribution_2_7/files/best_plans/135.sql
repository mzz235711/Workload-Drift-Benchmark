/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<115 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>667 AND u.DownVotes<930 AND v.CreationDate>'2009-03-27 01:28:59'::timestamp AND v.CreationDate<'2010-11-11 19:58:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-09-01 12:38:22'::timestamp AND b.Date<'2011-03-01 00:43:55'::timestamp;


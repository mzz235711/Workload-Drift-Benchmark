/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<46 AND p.CommentCount>4 AND p.CommentCount<16 AND u.DownVotes>504 AND u.DownVotes<1677 AND v.CreationDate>'2011-04-15 19:44:45'::timestamp AND v.CreationDate<'2012-09-11 23:55:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2013-01-25 14:17:24'::timestamp AND b.Date<'2013-08-29 16:28:11'::timestamp;


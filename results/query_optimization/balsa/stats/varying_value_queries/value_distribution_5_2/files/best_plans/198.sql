/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<46 AND p.CommentCount>3 AND p.CommentCount<27 AND u.DownVotes>414 AND u.DownVotes<1123 AND v.CreationDate>'2009-02-16 20:06:45'::timestamp AND v.CreationDate<'2014-02-09 19:20:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-01-05 02:22:47'::timestamp AND b.Date<'2013-02-04 15:33:48'::timestamp;


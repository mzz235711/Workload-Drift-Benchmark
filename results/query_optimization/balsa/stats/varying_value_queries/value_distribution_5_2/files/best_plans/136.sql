/*+ HashJoin(v b p u)
 HashJoin(b p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>109 AND p.Score<173 AND p.CommentCount>9 AND p.CommentCount<24 AND u.DownVotes>616 AND u.DownVotes<825 AND v.CreationDate>'2010-11-19 21:04:29'::timestamp AND v.CreationDate<'2012-03-08 02:40:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-09-09 05:24:45'::timestamp AND b.Date<'2012-10-19 20:16:15'::timestamp;


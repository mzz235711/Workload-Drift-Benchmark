/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<136 AND p.CommentCount>7 AND p.CommentCount<22 AND u.DownVotes>680 AND u.DownVotes<1552 AND v.CreationDate>'2009-05-15 16:35:04'::timestamp AND v.CreationDate<'2014-05-19 09:39:01'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2013-02-11 02:54:55'::timestamp AND b.Date<'2014-03-02 16:57:39'::timestamp;


/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<33 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>102 AND u.DownVotes<1215 AND v.CreationDate>'2011-02-13 11:39:44'::timestamp AND v.CreationDate<'2014-04-26 05:55:30'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-03-03 16:20:01'::timestamp AND b.Date<'2013-01-05 19:39:30'::timestamp;


/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>37 AND p.Score<186 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>395 AND u.DownVotes<1701 AND v.CreationDate>'2013-06-05 08:01:23'::timestamp AND v.CreationDate<'2014-03-31 17:52:32'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-07-23 10:21:24'::timestamp AND b.Date<'2010-08-27 14:45:50'::timestamp;


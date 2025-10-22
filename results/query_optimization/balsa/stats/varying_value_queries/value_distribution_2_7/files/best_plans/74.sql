/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<145 AND p.CommentCount>12 AND p.CommentCount<27 AND u.DownVotes>209 AND u.DownVotes<1889 AND v.CreationDate>'2010-02-09 21:08:42'::timestamp AND v.CreationDate<'2014-08-05 10:10:42'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-12-27 18:02:44'::timestamp AND b.Date<'2014-07-24 04:26:16'::timestamp;


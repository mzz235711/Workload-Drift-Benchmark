/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<187 AND p.CommentCount>5 AND p.CommentCount<25 AND u.DownVotes>613 AND u.DownVotes<1858 AND v.CreationDate>'2012-12-21 11:37:01'::timestamp AND v.CreationDate<'2014-09-11 23:32:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-07-28 06:46:21'::timestamp AND b.Date<'2013-10-20 05:46:58'::timestamp;


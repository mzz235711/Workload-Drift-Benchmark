/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>98 AND p.Score<142 AND p.CommentCount>0 AND p.CommentCount<17 AND u.DownVotes>115 AND u.DownVotes<606 AND v.CreationDate>'2011-11-24 08:59:52'::timestamp AND v.CreationDate<'2014-05-27 10:16:51'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-01-07 00:32:38'::timestamp AND b.Date<'2013-02-05 10:01:09'::timestamp;


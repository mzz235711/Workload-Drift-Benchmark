/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>32 AND p.Score<137 AND p.CommentCount>11 AND p.CommentCount<43 AND u.DownVotes>148 AND u.DownVotes<1412 AND v.CreationDate>'2009-12-03 18:25:40'::timestamp AND v.CreationDate<'2011-06-24 01:41:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2014-05-01 05:43:40'::timestamp AND b.Date<'2014-07-05 02:09:46'::timestamp;


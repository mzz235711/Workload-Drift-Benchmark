/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<80 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>283 AND u.DownVotes<1674 AND v.CreationDate>'2010-09-01 01:51:40'::timestamp AND v.CreationDate<'2011-03-31 02:40:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-07-09 21:58:51'::timestamp AND b.Date<'2012-06-07 10:20:33'::timestamp;


/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<104 AND p.CommentCount>7 AND p.CommentCount<44 AND u.DownVotes>349 AND u.DownVotes<1667 AND v.CreationDate>'2012-08-21 01:19:24'::timestamp AND v.CreationDate<'2014-03-06 15:28:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-02 19:43:27'::timestamp AND b.Date<'2011-09-28 15:20:12'::timestamp;


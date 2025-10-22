/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<84 AND p.CommentCount>6 AND p.CommentCount<35 AND u.DownVotes>12 AND u.DownVotes<1645 AND v.CreationDate>'2009-12-31 18:03:00'::timestamp AND v.CreationDate<'2012-12-23 08:24:24'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2013-10-01 03:37:58'::timestamp AND b.Date<'2014-02-28 06:19:58'::timestamp;


/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<179 AND p.CommentCount>13 AND p.CommentCount<28 AND u.DownVotes>96 AND u.DownVotes<1665 AND v.CreationDate>'2009-03-17 07:17:34'::timestamp AND v.CreationDate<'2014-02-06 00:36:37'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-11-23 14:04:48'::timestamp AND b.Date<'2014-04-20 15:35:15'::timestamp;


/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<84 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>631 AND u.DownVotes<803 AND v.CreationDate>'2011-10-17 17:03:03'::timestamp AND v.CreationDate<'2012-06-15 03:16:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-05-04 04:21:19'::timestamp AND b.Date<'2014-07-31 23:16:03'::timestamp;


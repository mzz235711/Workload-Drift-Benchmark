/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<107 AND p.CommentCount>9 AND p.CommentCount<28 AND u.DownVotes>604 AND u.DownVotes<1321 AND v.CreationDate>'2011-07-19 10:39:56'::timestamp AND v.CreationDate<'2013-03-26 11:00:26'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-08-14 21:43:07'::timestamp AND b.Date<'2014-02-21 09:50:08'::timestamp;


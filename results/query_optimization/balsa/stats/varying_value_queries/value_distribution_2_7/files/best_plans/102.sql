/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<44 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>723 AND u.DownVotes<1767 AND v.CreationDate>'2010-01-04 11:12:10'::timestamp AND v.CreationDate<'2011-08-18 00:32:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2012-03-28 19:25:43'::timestamp AND b.Date<'2014-06-12 23:19:18'::timestamp;


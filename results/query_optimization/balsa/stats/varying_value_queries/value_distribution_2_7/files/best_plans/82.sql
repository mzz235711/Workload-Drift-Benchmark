/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<86 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>260 AND u.DownVotes<1142 AND v.CreationDate>'2012-04-24 15:59:08'::timestamp AND v.CreationDate<'2014-02-17 21:05:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-08-28 17:22:20'::timestamp AND b.Date<'2011-01-15 04:59:44'::timestamp;


/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<26 AND p.CommentCount>8 AND p.CommentCount<42 AND u.DownVotes>665 AND u.DownVotes<1041 AND v.CreationDate>'2010-10-16 12:36:38'::timestamp AND v.CreationDate<'2012-08-09 19:34:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-01-06 19:57:44'::timestamp AND b.Date<'2013-01-16 18:11:56'::timestamp;


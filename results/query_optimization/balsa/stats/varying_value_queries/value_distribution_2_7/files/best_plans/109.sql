/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<126 AND p.CommentCount>12 AND p.CommentCount<25 AND u.DownVotes>102 AND u.DownVotes<1191 AND v.CreationDate>'2011-03-04 07:59:26'::timestamp AND v.CreationDate<'2013-08-01 00:57:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-08-06 16:25:48'::timestamp AND b.Date<'2014-01-28 19:47:13'::timestamp;


/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<108 AND p.CommentCount>4 AND p.CommentCount<42 AND u.DownVotes>487 AND u.DownVotes<794 AND v.CreationDate>'2012-08-13 11:09:34'::timestamp AND v.CreationDate<'2014-04-29 14:59:20'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-10-20 13:41:42'::timestamp AND b.Date<'2013-01-17 19:43:19'::timestamp;


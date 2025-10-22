/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<105 AND p.CommentCount>15 AND p.CommentCount<29 AND u.DownVotes>121 AND u.DownVotes<1097 AND v.CreationDate>'2010-05-19 02:01:15'::timestamp AND v.CreationDate<'2013-12-01 05:05:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-01-29 14:18:43'::timestamp AND b.Date<'2012-10-09 18:25:55'::timestamp;


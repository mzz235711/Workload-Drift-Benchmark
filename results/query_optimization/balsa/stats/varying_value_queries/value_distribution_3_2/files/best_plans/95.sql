/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<148 AND p.CommentCount>19 AND p.CommentCount<38 AND u.DownVotes>150 AND u.DownVotes<309 AND v.CreationDate>'2012-09-24 22:21:33'::timestamp AND v.CreationDate<'2014-02-14 00:13:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-03-01 06:40:54'::timestamp AND b.Date<'2013-06-26 08:22:40'::timestamp;


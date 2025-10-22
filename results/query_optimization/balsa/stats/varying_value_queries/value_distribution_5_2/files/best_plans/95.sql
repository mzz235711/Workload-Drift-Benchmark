/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>102 AND p.Score<152 AND p.CommentCount>2 AND p.CommentCount<38 AND u.DownVotes>21 AND u.DownVotes<333 AND v.CreationDate>'2012-02-29 17:09:30'::timestamp AND v.CreationDate<'2012-09-29 18:38:04'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-03-02 15:05:59'::timestamp AND b.Date<'2013-05-18 21:57:20'::timestamp;


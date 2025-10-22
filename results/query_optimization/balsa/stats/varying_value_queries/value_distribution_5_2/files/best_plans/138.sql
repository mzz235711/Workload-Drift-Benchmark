/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<105 AND p.CommentCount>9 AND p.CommentCount<11 AND u.DownVotes>671 AND u.DownVotes<829 AND v.CreationDate>'2011-07-05 00:04:19'::timestamp AND v.CreationDate<'2013-08-09 04:34:24'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2012-11-07 18:54:48'::timestamp AND b.Date<'2013-10-05 00:13:30'::timestamp;


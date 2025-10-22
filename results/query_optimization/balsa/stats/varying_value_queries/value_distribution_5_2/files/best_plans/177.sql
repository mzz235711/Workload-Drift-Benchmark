/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>63 AND p.Score<172 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>296 AND u.DownVotes<784 AND v.CreationDate>'2011-10-13 00:37:09'::timestamp AND v.CreationDate<'2012-08-28 21:04:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2013-07-18 11:39:08'::timestamp AND b.Date<'2014-04-01 21:07:04'::timestamp;


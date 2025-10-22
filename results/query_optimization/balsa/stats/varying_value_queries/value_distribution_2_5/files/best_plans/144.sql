/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>102 AND p.Score<149 AND p.CommentCount>9 AND p.CommentCount<24 AND u.DownVotes>69 AND u.DownVotes<1872 AND v.CreationDate>'2011-10-09 00:28:45'::timestamp AND v.CreationDate<'2013-02-14 05:10:05'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2011-05-27 04:01:04'::timestamp AND b.Date<'2014-01-02 22:27:47'::timestamp;


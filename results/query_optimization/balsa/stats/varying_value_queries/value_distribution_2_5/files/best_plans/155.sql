/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<48 AND p.CommentCount>9 AND p.CommentCount<33 AND u.DownVotes>762 AND u.DownVotes<1825 AND v.CreationDate>'2011-09-06 04:48:03'::timestamp AND v.CreationDate<'2014-03-13 20:58:50'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2013-02-15 07:29:45'::timestamp AND b.Date<'2013-12-28 04:30:09'::timestamp;


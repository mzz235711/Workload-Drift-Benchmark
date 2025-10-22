/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c ((ph u) p)) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.FavoriteCount=1 AND p.CreationDate>='2010-07-19 23:17:53'::timestamp AND u.Views<=206 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-02 11:30:04'::timestamp;

